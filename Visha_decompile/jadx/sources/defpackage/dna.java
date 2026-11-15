package defpackage;

import com.transsion.dbdata.beans.onlinevideo.tiktok.ArticleData;
import com.transsion.dbdata.beans.onlinevideo.tiktok.VideoInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class dna {
    public static final dna a = new dna();

    public static final List c(String str, List list, final long j) {
        y45.j(list, "allArticles");
        if (str != null && str.length() != 0) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (y45.e(((ArticleData) obj).getReqId(), str)) {
                    arrayList.add(obj);
                }
            }
            list = arrayList;
        }
        return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.B(SequencesKt___SequencesKt.S(SequencesKt___SequencesKt.F(i81.b0(list), new e74() {
            @Override
            public final Object invoke(Object obj2) {
                return Boolean.valueOf(dna.d(j, (ArticleData) obj2));
            }
        }), new e74() {
            @Override
            public final Object invoke(Object obj2) {
                return dna.e((ArticleData) obj2);
            }
        })));
    }

    public static final boolean d(long j, ArticleData articleData) {
        y45.j(articleData, "it");
        return f(articleData.getVideoInfo(), j);
    }

    public static final String e(ArticleData articleData) {
        y45.j(articleData, "it");
        String docId = articleData.getDocId();
        if (docId == null || docId.length() <= 0) {
            return null;
        }
        return docId;
    }

    public static final boolean f(VideoInfo videoInfo, long j) {
        if (videoInfo == null) {
            return false;
        }
        long urlExpire = videoInfo.getUrlExpire();
        return urlExpire > 0 && j >= urlExpire;
    }
}
