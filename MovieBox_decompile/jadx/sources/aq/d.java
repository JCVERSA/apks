package aq;

import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.R$mipmap;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.StaffType;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search.bean.SuggestEntity;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ni.f;

public final class d extends BaseItemProvider {
    @Override
    public int l() {
        return 3;
    }

    @Override
    public int m() {
        return R$layout.fragment_search_suggest_staff_layout;
    }

    @Override
    public void b(BaseViewHolder helper, SuggestEntity item) {
        String avatarUrl;
        List<StaffType> staffTypes;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        f.b bVarM = f.f67269a.m(k());
        Staff staff = item.getStaff();
        if (staff == null || (avatarUrl = staff.getAvatarUrl()) == null) {
            avatarUrl = "";
        }
        bVarM.g(avatarUrl).i(R$mipmap.movie_staff_default_avatar).d((ImageView) helper.getView(R$id.ivCover));
        int i10 = R$id.tvTitle;
        Staff staff2 = item.getStaff();
        helper.setText(i10, staff2 != null ? staff2.getName() : null);
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvDes);
        if (appCompatTextView != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            Staff staff3 = item.getStaff();
            if (staff3 != null && (staffTypes = staff3.getStaffTypes()) != null) {
                int i11 = 0;
                for (Object obj : staffTypes) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.u();
                    }
                    spannableStringBuilder.append((CharSequence) String.valueOf(((StaffType) obj).getName()));
                    if (i11 < staffTypes.size() - 1) {
                        spannableStringBuilder.append((CharSequence) " · ");
                    }
                    i11 = i12;
                }
            }
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) "  ");
            spannableStringBuilder2.append((CharSequence) spannableStringBuilder.toString());
            int i13 = R$drawable.search_suggest_staff;
            spannableStringBuilder2.setSpan(Build.VERSION.SDK_INT >= 29 ? new ImageSpan(appCompatTextView.getContext(), i13, 2) : new ImageSpan(appCompatTextView.getContext(), i13, 1), 0, 1, 34);
            appCompatTextView.setText(spannableStringBuilder2);
        }
        int i14 = R$id.tvWorks;
        Staff staff4 = item.getStaff();
        Integer subjectNum = staff4 != null ? staff4.getSubjectNum() : null;
        helper.setText(i14, subjectNum + " " + k().getString(R$string.search_works));
    }
}
