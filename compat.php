<?php
if (!function_exists('mysql_connect')) {
    $GLOBALS['___mysql_compat_link'] = null;

    function mysql_connect($server = 'localhost', $username = null, $password = null)
    {
        $host = $server;
        $port = null;

        if (is_string($server) && strpos($server, ':') !== false) {
            list($host, $portPart) = explode(':', $server, 2);
            if (is_numeric($portPart)) {
                $port = (int) $portPart;
            }
        }

        $link = mysqli_connect($host, $username, $password, '', $port ?: null);
        if (!$link) {
            return false;
        }

        $GLOBALS['___mysql_compat_link'] = $link;
        return $link;
    }

    function mysql_select_db($database_name, $link_identifier = null)
    {
        $link = $link_identifier ?: ($GLOBALS['___mysql_compat_link'] ?? null);
        return $link ? mysqli_select_db($link, $database_name) : false;
    }

    function mysql_query($query, $link_identifier = null)
    {
        $link = $link_identifier ?: ($GLOBALS['___mysql_compat_link'] ?? null);
        return $link ? mysqli_query($link, $query) : false;
    }

    function mysql_num_rows($result)
    {
        return ($result instanceof mysqli_result) ? mysqli_num_rows($result) : 0;
    }

    function mysql_fetch_row($result)
    {
        return mysqli_fetch_row($result);
    }

    function mysql_fetch_array($result, $result_type = MYSQLI_BOTH)
    {
        return mysqli_fetch_array($result, $result_type);
    }

    function mysql_fetch_object($result, $class_name = 'stdClass', $params = [])
    {
        return mysqli_fetch_object($result, $class_name, $params);
    }

    function mysql_real_escape_string($unescaped_string, $link_identifier = null)
    {
        $link = $link_identifier ?: ($GLOBALS['___mysql_compat_link'] ?? null);
        $unescaped_string = (string)($unescaped_string ?? '');
        return $link ? mysqli_real_escape_string($link, $unescaped_string) : addslashes($unescaped_string);
    }

    function mysql_error($link_identifier = null)
    {
        $link = $link_identifier ?: ($GLOBALS['___mysql_compat_link'] ?? null);
        return $link ? mysqli_error($link) : mysqli_connect_error();
    }

    function mysql_affected_rows($link_identifier = null)
    {
        $link = $link_identifier ?: ($GLOBALS['___mysql_compat_link'] ?? null);
        return $link ? mysqli_affected_rows($link) : false;
    }

    function mysql_num_fields($result)
    {
        return mysqli_num_fields($result);
    }

    function mysql_fetch_field($result, $field_offset = null)
    {
        return $field_offset === null ? mysqli_fetch_field($result) : mysqli_fetch_field_direct($result, $field_offset);
    }

    function mysql_data_seek($result, $row_number)
    {
        return mysqli_data_seek($result, $row_number);
    }

    function mysql_insert_id($link_identifier = null)
    {
        $link = $link_identifier ?: ($GLOBALS['___mysql_compat_link'] ?? null);
        return $link ? mysqli_insert_id($link) : 0;
    }

    function mysql_close($link_identifier = null)
    {
        $link = $link_identifier ?: ($GLOBALS['___mysql_compat_link'] ?? null);
        if (!$link) {
            return false;
        }

        $result = mysqli_close($link);
        if ($link === ($GLOBALS['___mysql_compat_link'] ?? null)) {
            $GLOBALS['___mysql_compat_link'] = null;
        }

        return $result;
    }
}