package org.proninyaroslav.libretorrent.core.model;

import android.net.Uri;
import java.util.ArrayList;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.TorrentMetaInfo;
import org.proninyaroslav.libretorrent.core.model.filetree.BencodeFileTree;

public class AddTorrentMutableParams {
    public String a;
    public boolean b;
    public String c;
    public Uri d;
    public String e;
    public boolean g;
    public boolean j;
    public TorrentMetaInfo l;
    public ArrayList m;
    public ArrayList o;
    public BencodeFileTree p;
    public BencodeFileTree[] q;
    public long f = -1;
    public boolean h = true;
    public boolean i = false;
    public Status k = Status.UNKNOWN;
    public ArrayList n = new ArrayList();

    public static abstract class OnStatusListener {
    }

    public enum Status {
        UNKNOWN,
        FETCHING_MAGNET,
        FETCHING_MAGNET_COMPLETED,
        ERROR,
        TIMEOUT,
        TASK_EXIST
    }

    public ArrayList a() {
        return this.o;
    }

    public void addStatusListener(OnStatusListener onStatusListener) {
        this.n.add(onStatusListener);
    }

    public BencodeFileTree b() {
        return this.p;
    }

    public TorrentMetaInfo c() {
        return this.l;
    }

    public ArrayList d() {
        return this.m;
    }

    public String e() {
        return this.c;
    }

    public String f() {
        return this.a;
    }

    public BencodeFileTree[] g() {
        return this.q;
    }

    public boolean h() {
        return this.j;
    }

    public boolean i() {
        return this.b;
    }

    public boolean j() {
        return this.i;
    }

    public boolean k() {
        return this.g;
    }

    public boolean l() {
        return this.h;
    }

    public void m(ArrayList arrayList) {
        this.o = arrayList;
    }

    public void n(BencodeFileTree bencodeFileTree) {
        this.p = bencodeFileTree;
    }

    public void o(boolean z) {
        this.b = z;
    }

    public void p(TorrentMetaInfo torrentMetaInfo) {
        this.l = torrentMetaInfo;
    }

    public void q(String str) {
        this.c = str;
    }

    public void r(String str) {
        this.a = str;
    }

    public void removeStatusListener(OnStatusListener onStatusListener) {
        this.n.remove(onStatusListener);
    }

    public void s(Status status) {
        this.k = status;
    }

    public void t(BencodeFileTree[] bencodeFileTreeArr) {
        this.q = bencodeFileTreeArr;
    }

    public String toString() {
        return "AddTorrentMutableParams{source='" + this.a + "', fromMagnet=" + this.b + ", name='" + this.c + "', dirPath=" + this.d + ", dirName='" + this.e + "', storageFreeSpace=" + this.f + ", sequentialDownload=" + this.g + ", startAfterAdd=" + this.h + ", ignoreFreeSpace=" + this.i + ", firstLastPiecePriority=" + this.j + '}';
    }
}
