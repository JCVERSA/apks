package org.libtorrent4j;

import java.util.ArrayList;
import org.libtorrent4j.swig.string_string_pair;
import org.libtorrent4j.swig.string_string_pair_vector;
import org.libtorrent4j.swig.web_seed_entry;

public final class WebSeedEntry {
    private final web_seed_entry e;

    public WebSeedEntry(web_seed_entry web_seed_entryVar) {
        this.e = web_seed_entryVar;
    }

    public String auth() {
        return this.e.getAuth();
    }

    public ArrayList<Pair<String, String>> extraHeaders() {
        string_string_pair_vector extra_headers = this.e.getExtra_headers();
        int size = extra_headers.size();
        ArrayList<Pair<String, String>> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            string_string_pair string_string_pairVar = extra_headers.get(i);
            arrayList.add(new Pair<>(string_string_pairVar.getFirst(), string_string_pairVar.getSecond()));
        }
        return arrayList;
    }

    public web_seed_entry swig() {
        return this.e;
    }

    public String url() {
        return this.e.getUrl();
    }
}
