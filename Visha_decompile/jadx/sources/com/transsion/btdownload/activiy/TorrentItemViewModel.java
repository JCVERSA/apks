package com.transsion.btdownload.activiy;

import androidx.core.util.Pair;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModel;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.btdownload.activiy.TorrentItemViewModel;
import com.transsion.playercommon.activities.BaseActivity;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pk0;
import defpackage.rc2;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.proninyaroslav.libretorrent.core.model.TorrentEngineListener;
import org.proninyaroslav.libretorrent.core.model.data.Priority;
import org.proninyaroslav.libretorrent.core.model.data.TorrentInfo;
import org.proninyaroslav.libretorrent.core.model.data.TorrentStateCode;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.BencodeFileItem;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.TorrentMetaInfo;
import org.proninyaroslav.libretorrent.core.model.filetree.FilePriority;
import org.proninyaroslav.libretorrent.core.model.filetree.TorrentContentFileTree;
import org.proninyaroslav.libretorrent.core.model.session.TorrentDownload;
import org.proninyaroslav.libretorrent.core.utils.TorrentContentFileTreeUtils;

public class TorrentItemViewModel extends ViewModel {
    public TorrentMetaInfo c;
    public TorrentInfo d;
    public rc2 e;
    public rc2 f;
    public MutableLiveData a = new MutableLiveData();
    public MutableLiveData b = new MutableLiveData();
    public MutableLiveData g = new MutableLiveData();
    public MutableLiveData h = new MutableLiveData();
    public TorrentEngineListener i = new a();

    public class a extends TorrentEngineListener {
        public a() {
        }

        @Override
        public void onMagnetLoaded(String str, byte[] bArr) {
            super.onMagnetLoaded(str, bArr);
        }

        @Override
        public void onTorrentAdded(String str) {
            super.onTorrentAdded(str);
            LogUtils.v("visha_TorrentItemViewModel", "onTorrentAdded:" + str);
        }

        @Override
        public void onTorrentError(String str, Exception exc) {
            super.onTorrentError(str, exc);
            LogUtils.l("visha_TorrentItemViewModel", "onTorrentError:" + str);
        }

        @Override
        public void onTorrentFinished(String str) {
            super.onTorrentFinished(str);
            LogUtils.l("visha_TorrentItemViewModel", "onTorrentFinished:" + str);
        }

        @Override
        public void onTorrentPaused(String str) {
            super.onTorrentPaused(str);
            if (TorrentItemViewModel.this.p().torrentId.equals(str)) {
                TorrentItemViewModel.this.F(true);
            }
            LogUtils.v("visha_TorrentItemViewModel", "onTorrentPaused:" + str);
        }

        @Override
        public void onTorrentRemoved(String str) {
            super.onTorrentRemoved(str);
            LogUtils.v("visha_TorrentItemViewModel", "onTorrentRemoved:" + str);
        }

        @Override
        public void onTorrentResumed(String str) {
            super.onTorrentResumed(str);
            LogUtils.v("visha_TorrentItemViewModel", "onTorrentResumed:" + str);
            if (TorrentItemViewModel.this.p().torrentId.equals(str)) {
                TorrentItemViewModel.this.F(false);
            }
        }

        @Override
        public void onTorrentStateChanged(String str, TorrentStateCode torrentStateCode, TorrentStateCode torrentStateCode2) {
            super.onTorrentStateChanged(str, torrentStateCode, torrentStateCode2);
            if (TorrentItemViewModel.this.p().torrentId.equals(str)) {
                if (torrentStateCode2 == TorrentStateCode.DOWNLOADING || torrentStateCode2 == TorrentStateCode.CHECKING || torrentStateCode2 == TorrentStateCode.DOWNLOADING_METADATA) {
                    TorrentItemViewModel.this.F(false);
                } else {
                    TorrentItemViewModel.this.F(true);
                }
            }
            LogUtils.v("visha_TorrentItemViewModel", "onTorrentStateChanged:" + str);
        }
    }

    public static List s(TorrentItemViewModel torrentItemViewModel) {
        return pk0.f().h();
    }

    public final void A(Throwable th) {
        this.a.postValue(new ArrayList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pair B(TorrentMetaInfo torrentMetaInfo, TorrentInfo torrentInfo) {
        if (torrentMetaInfo == null) {
            return null;
        }
        ArrayList<BencodeFileItem> arrayList = torrentMetaInfo.fileList;
        if (arrayList.isEmpty()) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Priority priority : torrentInfo.filePriorities) {
            arrayList2.add(new FilePriority(priority));
        }
        Pair pairA = TorrentContentFileTreeUtils.a(arrayList);
        for (int i = 0; i < arrayList.size(); i++) {
            TorrentContentFileTree torrentContentFileTree = ((TorrentContentFileTree[]) pairA.second)[arrayList.get(i).getIndex()];
            if (torrentContentFileTree != null) {
                torrentContentFileTree.setPriority((FilePriority) arrayList2.get(i), false);
            }
        }
        return pairA;
    }

    public void C(LifecycleOwner lifecycleOwner, Observer observer) {
        this.g.observe(lifecycleOwner, observer);
    }

    public void D(LifecycleOwner lifecycleOwner, Observer observer) {
        this.h.observe(lifecycleOwner, observer);
    }

    public void E() {
        pk0.f().r(this.i);
    }

    public void F(boolean z) {
        this.g.postValue(Boolean.valueOf(z));
    }

    public void G(boolean z) {
        this.h.setValue(Boolean.valueOf(z));
    }

    public void H(TorrentInfo torrentInfo) {
        this.d = torrentInfo;
    }

    public void I(TorrentMetaInfo torrentMetaInfo) {
        this.c = torrentMetaInfo;
    }

    public void J() {
        this.b.setValue(null);
        rc2 rc2Var = this.f;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
    }

    public void K() {
        rc2 rc2Var = this.e;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
    }

    public void L(final String str) {
        rc2 rc2Var = this.f;
        if (rc2Var != null && !rc2Var.isDisposed()) {
            this.f.dispose();
        }
        mc7.K(this);
        this.f = mc7.H(0L, 1000L, TimeUnit.MILLISECONDS).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.x(str, (Long) obj);
            }
        }).d0(k29.a()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.v((Pair) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.w((Throwable) obj);
            }
        });
    }

    public void M() {
        rc2 rc2Var = this.e;
        if (rc2Var != null && !rc2Var.isDisposed()) {
            this.e.dispose();
        }
        mc7.K(this);
        mc7.J(1000L, TimeUnit.MILLISECONDS).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.y((Long) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.z((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.A((Throwable) obj);
            }
        });
    }

    public void j() {
        pk0.f().d(this.i);
    }

    public MutableLiveData k() {
        return this.b;
    }

    public String l() {
        return p().torrentId;
    }

    public TorrentDownload m(String str) {
        return pk0.f().j(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean n() {
        if (this.h.getValue() == 0) {
            return false;
        }
        return ((Boolean) this.h.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Pair o(String str) {
        TorrentContentFileTree[] torrentContentFileTreeArr = (TorrentContentFileTree[]) ((Pair) this.b.getValue()).second;
        List listAsList = Arrays.asList(torrentContentFileTreeArr);
        ArrayList arrayList = new ArrayList();
        Priority[] filePriorities = m(str).getFilePriorities();
        for (int i = 0; i < filePriorities.length; i++) {
            Priority priority = filePriorities[i];
            Priority priority2 = Priority.IGNORE;
            if (priority.equals(priority2)) {
                torrentContentFileTreeArr[i].setPriority(new FilePriority(priority2), true);
                arrayList.add(torrentContentFileTreeArr[i]);
            }
        }
        return new Pair(listAsList, arrayList);
    }

    public TorrentInfo p() {
        return this.d;
    }

    public MutableLiveData q() {
        return this.a;
    }

    public void r(BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return TorrentItemViewModel.s((TorrentItemViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.t((List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.u((Throwable) obj);
            }
        });
    }

    public final void t(List list) {
        this.a.postValue(list);
    }

    public final void u(Throwable th) {
        this.a.postValue(new ArrayList());
    }

    public final void v(Pair pair) {
        this.b.postValue(pair);
    }

    public final void w(Throwable th) {
        this.b.postValue(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pair x(String str, Long l) {
        if (!this.b.hasObservers()) {
            this.f.dispose();
            return null;
        }
        Pair pairB = (Pair) this.b.getValue();
        if (pairB == null) {
            pairB = B(this.c, this.d);
        }
        TorrentContentFileTree[] torrentContentFileTreeArr = (TorrentContentFileTree[]) pairB.second;
        TorrentDownload torrentDownloadM = m(str);
        long[] filesReceivedBytes = torrentDownloadM.getFilesReceivedBytes();
        Priority[] filePriorities = torrentDownloadM.getFilePriorities();
        for (int i = 0; i < filesReceivedBytes.length; i++) {
            torrentContentFileTreeArr[i].setReceivedBytes(filesReceivedBytes[i]);
            torrentContentFileTreeArr[i].setPriority(new FilePriority(filePriorities[i]), true);
        }
        return pairB;
    }

    public final List y(Long l) {
        if (!this.a.hasObservers()) {
            this.e.dispose();
        }
        return pk0.f().h();
    }

    public final void z(List list) {
        this.a.postValue(list);
    }
}
