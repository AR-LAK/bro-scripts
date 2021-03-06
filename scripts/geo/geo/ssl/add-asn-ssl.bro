export {
    redef record SSL::Info += {
        orig_asn: count &optional &log;
        resp_asn: count &optional &log;
    };
}

event ssl_established(c: connection)
    {

    if (c?$orig_asn)
        c$ssl$orig_asn = c$orig_asn;

    if (c?$resp_asn)
        c$ssl$resp_asn = c$resp_asn;

    }
