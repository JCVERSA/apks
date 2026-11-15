package zp;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.h;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.fragment.result.ResultType;
import com.transsion.search.fragment.result.ResultWrapData;
import ij.t;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class f extends BaseItemProvider {
    public static final void A(ResultWrapData resultWrapData, ImageView imageView, f fVar, BaseViewHolder baseViewHolder, View view) {
        Subject subject = resultWrapData.getSubject();
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        com.transsion.search.f.d(subject, "searchresult", context, "search_result");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = fVar.g();
        if (baseProviderMultiAdapterG instanceof com.transsion.search.fragment.result.adapter.a) {
            ((com.transsion.search.fragment.result.adapter.a) baseProviderMultiAdapterG).R1(resultWrapData.getSubject(), baseViewHolder.getBindingAdapterPosition());
        }
    }

    @Override
    public int l() {
        return ResultType.SUBJECT.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_result_subject;
    }

    @Override
    public void b(final BaseViewHolder helper, final ResultWrapData item) {
        String url;
        String thumbnail;
        Subject subject;
        Subject subject2;
        List listL;
        Subject subject3;
        Cover cover;
        Cover cover2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Subject subject4 = item.getSubject();
        if (subject4 == null || !subject4.isMusicType()) {
            Resources resources = k().getResources();
            Intrinsics.g(resources, "getResources(...)");
            if (com.transsion.search.f.e(resources)) {
                ImageView imageView = (ImageView) helper.getView(R$id.search_result_provider_subject_cover);
                imageView.getLayoutParams().width = a0.a(100.0f);
                imageView.getLayoutParams().height = a0.a(140.0f);
                imageView.setLayoutParams(imageView.getLayoutParams());
            } else {
                ImageView imageView2 = (ImageView) helper.getView(R$id.search_result_provider_subject_cover);
                imageView2.getLayoutParams().width = a0.a(50.0f);
                imageView2.getLayoutParams().height = a0.a(70.0f);
                imageView2.setLayoutParams(imageView2.getLayoutParams());
                ((TextView) helper.getView(R$id.search_result_provider_subject_title)).setMaxLines(2);
            }
        } else {
            ImageView imageView3 = (ImageView) helper.getView(R$id.search_result_provider_subject_cover);
            Resources resources2 = imageView3.getResources();
            Intrinsics.g(resources2, "getResources(...)");
            if (com.transsion.search.f.e(resources2)) {
                imageView3.getLayoutParams().width = a0.a(160.0f);
                imageView3.getLayoutParams().height = a0.a(90.0f);
            } else {
                imageView3.getLayoutParams().width = a0.a(80.0f);
                imageView3.getLayoutParams().height = a0.a(45.0f);
            }
            imageView3.setLayoutParams(imageView3.getLayoutParams());
            ((TextView) helper.getView(R$id.search_result_provider_subject_title)).setMaxLines(1);
        }
        ni.f.b bVarM = ni.f.f67269a.m(k());
        Subject subject5 = item.getSubject();
        if (subject5 == null || (cover2 = subject5.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ni.f.b bVarM2 = bVarM.g(url).m(a0.a(80.0f));
        Subject subject6 = item.getSubject();
        if (subject6 == null || (cover = subject6.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
            thumbnail = "";
        }
        bVarM2.l(thumbnail).d((ImageView) helper.getView(R$id.search_result_provider_subject_cover));
        TextView textView = (TextView) helper.getView(R$id.search_result_provider_subject_corner);
        Subject subject7 = item.getSubject();
        String corner = subject7 != null ? subject7.getCorner() : null;
        if (corner == null || corner.length() == 0) {
            uf.c.h(textView);
        } else {
            Subject subject8 = item.getSubject();
            textView.setText(subject8 != null ? subject8.getCorner() : null);
            uf.c.k(textView);
        }
        int i10 = R$id.search_result_provider_subject_title;
        Subject subject9 = item.getSubject();
        helper.setText(i10, subject9 != null ? subject9.getTitle() : null);
        final ImageView imageView4 = (ImageView) helper.getView(R$id.search_result_provider_subject_play);
        imageView4.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                f.A(item, imageView4, this, helper, view);
            }
        });
        t tVar = t.f62121a;
        if (tVar.b() && (subject3 = item.getSubject()) != null && subject3.isJumpBrowser()) {
            imageView4.setVisibility(0);
            imageView4.setImageResource(R$drawable.ic_result_arrow);
        } else if (!tVar.b() && (subject2 = item.getSubject()) != null && subject2.isJumpBrowser()) {
            imageView4.setVisibility(4);
        } else if (!tVar.b() || (subject = item.getSubject()) == null || subject.isShortTV()) {
            imageView4.setVisibility(0);
            imageView4.setImageResource(R$drawable.ic_result_download);
        } else {
            imageView4.setVisibility(0);
            imageView4.setImageResource(R$drawable.ic_result_play);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Context contextK = k();
        Subject subject10 = item.getSubject();
        ImageSpan imageSpanA = com.transsion.search.f.a(contextK, h.a(subject10 != null ? subject10.getSubjectType() : null));
        spannableStringBuilder.append((CharSequence) "￼");
        spannableStringBuilder.setSpan(imageSpanA, 0, 1, 33);
        spannableStringBuilder.append((CharSequence) "￼");
        spannableStringBuilder.setSpan(com.transsion.search.f.b(k()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        Subject subject11 = item.getSubject();
        if ((subject11 != null ? subject11.getImdbRate() : null) != null && !item.getSubject().isMusicType()) {
            ImageSpan imageSpanA2 = com.transsion.search.f.a(k(), R$drawable.ic_search_result_star);
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(imageSpanA2, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.append((CharSequence) item.getSubject().getImdbRate());
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(com.blankj.utilcode.util.h.a(R$color.yellow_60));
            String imdbRate = item.getSubject().getImdbRate();
            spannableStringBuilder.setSpan(foregroundColorSpan, spannableStringBuilder.length() - (imdbRate != null ? imdbRate.length() : 0), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(com.transsion.search.f.b(k()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        Subject subject12 = item.getSubject();
        if ((subject12 != null ? subject12.getReleaseDate() : null) != null) {
            String releaseDate = item.getSubject().getReleaseDate();
            String strSubstring = releaseDate != null ? releaseDate : "";
            if (strSubstring.length() >= 4) {
                strSubstring = strSubstring.substring(0, 4);
                Intrinsics.g(strSubstring, "substring(...)");
            }
            spannableStringBuilder.append((CharSequence) strSubstring);
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(com.transsion.search.f.b(k()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        Subject subject13 = item.getSubject();
        if ((subject13 != null ? subject13.getCountryName() : null) != null) {
            spannableStringBuilder.append((CharSequence) item.getSubject().getCountryName());
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.setSpan(com.transsion.search.f.b(k()), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        Subject subject14 = item.getSubject();
        if ((subject14 != null ? subject14.getGenre() : null) != null) {
            String genre = item.getSubject().getGenre();
            if (genre == null || (listL = StringsKt.S0(genre, new String[]{","}, false, 0, 6, null)) == null) {
                listL = CollectionsKt.l();
            }
            if (!listL.isEmpty()) {
                spannableStringBuilder.append((CharSequence) listL.get(0));
            }
        }
        ((TextView) helper.getView(R$id.search_result_provider_subject_brief)).setText(spannableStringBuilder);
        TextView textView2 = (TextView) helper.getView(R$id.search_result_provider_subject_website);
        Subject subject15 = item.getSubject();
        textView2.setVisibility((subject15 == null || !subject15.isJumpBrowser()) ? 8 : 0);
    }
}
