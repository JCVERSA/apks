package org.libtorrent4j;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.libtorrent4j.swig.announce_endpoint;
import org.libtorrent4j.swig.announce_endpoint_vector;
import org.libtorrent4j.swig.announce_entry;

public final class AnnounceEntry extends SwigObject<announce_entry> {
    public AnnounceEntry(announce_entry announce_entryVar) {
        super(announce_entryVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<AnnounceEndpoint> endpoints() {
        announce_endpoint_vector endpoints = ((announce_entry) this.h).getEndpoints();
        ArrayList arrayList = new ArrayList(endpoints.size());
        Iterator<announce_endpoint> it = endpoints.iterator();
        while (it.hasNext()) {
            arrayList.add(new AnnounceEndpoint(it.next()));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int failLimit() {
        return ((announce_entry) this.h).getFail_limit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isVerified() {
        return ((announce_entry) this.h).getVerified();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int source() {
        return ((announce_entry) this.h).getSource();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int tier() {
        return ((announce_entry) this.h).getTier();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String trackerId() {
        return ((announce_entry) this.h).getTrackerid();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String url() {
        return ((announce_entry) this.h).getUrl();
    }

    public AnnounceEntry(String str) {
        super(new announce_entry(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void failLimit(short s) {
        ((announce_entry) this.h).setFail_limit(s);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void tier(short s) {
        ((announce_entry) this.h).setTier(s);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void trackerId(String str) {
        ((announce_entry) this.h).setTrackerid(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void url(String str) {
        ((announce_entry) this.h).setUrl(str);
    }
}
