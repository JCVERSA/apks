package com.transsion.api.gateway.sercurity;

import java.util.Comparator;
import java.util.Map;

public class b implements Comparator<Map.Entry<String, String>> {
    public b(c cVar) {
    }

    @Override
    public int compare(Map.Entry<String, String> entry, Map.Entry<String, String> entry2) {
        return entry.getKey().compareTo(entry2.getKey());
    }
}
