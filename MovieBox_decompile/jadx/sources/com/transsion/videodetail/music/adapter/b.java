package com.transsion.videodetail.music.adapter;

import android.text.TextUtils;
import androidx.recyclerview.widget.DiffUtil;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import com.transsion.videodetail.music.bean.MusicLikedMultiItemEntity;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class b extends DiffUtil.a {

    private final List f55554a;

    private final List f55555b;

    public b(List oldList, List newList) {
        Intrinsics.h(oldList, "oldList");
        Intrinsics.h(newList, "newList");
        this.f55554a = oldList;
        this.f55555b = newList;
    }

    @Override
    public boolean a(int i10, int i11) {
        return Intrinsics.c(this.f55554a.get(i10), this.f55555b.get(i11));
    }

    @Override
    public boolean b(int i10, int i11) {
        MusicLikedDbBean musicLikedDbBean = ((MusicLikedMultiItemEntity) this.f55554a.get(i10)).getMusicLikedDbBean();
        String subjectId = musicLikedDbBean != null ? musicLikedDbBean.getSubjectId() : null;
        MusicLikedDbBean musicLikedDbBean2 = ((MusicLikedMultiItemEntity) this.f55555b.get(i11)).getMusicLikedDbBean();
        return TextUtils.equals(subjectId, musicLikedDbBean2 != null ? musicLikedDbBean2.getSubjectId() : null);
    }

    @Override
    public int d() {
        return this.f55555b.size();
    }

    @Override
    public int e() {
        return this.f55554a.size();
    }
}
