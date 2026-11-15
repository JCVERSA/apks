package sp;

import android.content.Context;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.c0;
import com.blankj.utilcode.util.u;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.view.CornerTextView;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search.bean.SearchSubject;
import java.util.Calendar;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;
import ni.f;
import zg.h;

public final class d extends BaseItemProvider {

    private final int f72382e;

    private final int f72383f;

    private final int f72384g;

    private final int f72385h;

    private final int f72386i;

    private final int f72387j;

    public d(Context context) {
        Intrinsics.h(context, "context");
        int iA = a0.a(104.0f);
        this.f72382e = iA;
        int iA2 = a0.a(149.0f);
        this.f72383f = iA2;
        int iA3 = a0.a(48.0f);
        this.f72384g = iA3;
        int iE = h.f76787a.e(context);
        this.f72385h = iE;
        int i10 = (iE - iA3) / 3;
        this.f72386i = i10;
        this.f72387j = (int) (i10 * ((iA2 * 1.0f) / iA));
    }

    @Override
    public int l() {
        return 0;
    }

    @Override
    public int m() {
        return R$layout.item_works_layout_vertical;
    }

    @Override
    public void b(BaseViewHolder helper, SearchSubject item) {
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Context context = helper.itemView.getContext();
        ImageView imageView = (ImageView) helper.itemView.findViewById(R$id.ivCover);
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).height = this.f72387j;
        ((ViewGroup.MarginLayoutParams) bVar).width = this.f72386i;
        Cover cover = item.getCover();
        if (cover != null && (url = cover.getUrl()) != null) {
            f.a aVar = f.f67269a;
            Intrinsics.e(context);
            f.b bVarC = aVar.m(context).g(url).m(this.f72386i).c(this.f72387j);
            Cover cover2 = item.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            f.b bVarL = bVarC.l(thumbnail);
            Intrinsics.e(imageView);
            bVarL.d(imageView);
        }
        helper.setText(R$id.tvSubject, item.getTitle());
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvSubjectYear);
        if (appCompatTextView != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) "  ");
            String releaseDate = item.getReleaseDate();
            if (releaseDate != null && releaseDate.length() != 0) {
                Date dateL = c0.l(item.getReleaseDate(), "yyyy-MM-dd");
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(dateL);
                spannableStringBuilder.append((CharSequence) String.valueOf(calendar.get(1)));
            }
            String[] strArrA = u.a(item.getGenre(), ",");
            if (strArrA != null) {
                for (String str : strArrA) {
                    spannableStringBuilder.append((CharSequence) " / ").append((CharSequence) str);
                }
            }
            String countryName = item.getCountryName();
            if (countryName != null && countryName.length() != 0) {
                spannableStringBuilder.append((CharSequence) " / ").append((CharSequence) item.getCountryName());
            }
            int iA = com.transsion.moviedetailapi.h.a(item.getSubjectType());
            spannableStringBuilder.setSpan(Build.VERSION.SDK_INT >= 29 ? new ImageSpan(context, iA, 2) : new ImageSpan(context, iA, 1), 0, 1, 34);
            appCompatTextView.setText(spannableStringBuilder);
        }
        Integer seNum = item.getSeNum();
        int iIntValue = seNum != null ? seNum.intValue() : 0;
        helper.setGone(R$id.tvSeasons, iIntValue < 2);
        helper.setText(R$id.tvSeasons, context.getString(R$string.seasons, String.valueOf(iIntValue)));
        ((CornerTextView) helper.getView(R$id.ivSearchCorner)).setTextWithType(item.getCorner(), item.getSubjectType());
    }
}
