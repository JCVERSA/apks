package com.transsion.onlinevideo.tiktok;

import com.transsion.dbdata.beans.onlinevideo.tiktok.ArticleData;
import defpackage.e74;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public class TiktokFragment$loadFirstPage$d$1 extends FunctionReferenceImpl implements e74 {
    public TiktokFragment$loadFirstPage$d$1(Object obj) {
        super(1, obj, TiktokFragment.class, "onPageDataLoaded", "onPageDataLoaded(Ljava/util/List;)V", 0);
    }

    @Override
    public Object invoke(Object obj) {
        invoke((List<ArticleData>) obj);
        return zfb.a;
    }

    public final void invoke(List<ArticleData> list) {
        ((TiktokFragment) this.receiver).e1(list);
    }
}
