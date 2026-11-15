package com.transsion.xuanniao.account.center.view;

import android.content.Context;
import android.text.BidiFormatter;
import android.text.TextDirectionHeuristics;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.AddressesListRes;
import defpackage.fq7;
import java.util.ArrayList;
import java.util.Objects;
import tech.palm.lib.widget.TagTextView;

public class OppOOO0 extends RecyclerView.Adapter<OppO00p> {
    public ArrayList o;
    public Context p;
    public a q;
    public int r;
    public BidiFormatter s;

    public static class OppO00p extends RecyclerView.ViewHolder {
        public TagTextView p;
        public TextView q;
        public TextView r;
        public LinearLayout s;

        public OppO00p(View view) {
            super(view);
            this.p = (TagTextView) view.findViewById(R.id.fullName);
            this.q = (TextView) view.findViewById(R.id.phone);
            this.r = (TextView) view.findViewById(R.id.address);
            this.s = (LinearLayout) view.findViewById(R.id.edit);
        }
    }

    public interface a {
    }

    public OppOOO0(Context context, ArrayList arrayList) {
        this.p = context;
        this.o = arrayList;
        this.r = context.getResources().getDisplayMetrics().widthPixels;
        int i = context.getResources().getDisplayMetrics().heightPixels;
        this.r /= 25;
        this.s = BidiFormatter.getInstance();
    }

    @Override
    public int getItemCount() {
        ArrayList arrayList = this.o;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        String string;
        StringBuilder sb;
        OppO00p oppO00p = (OppO00p) viewHolder;
        AddressesListRes.Address address = (AddressesListRes.Address) this.o.get(i);
        oppO00p.p.setText(address.userName);
        String str = null;
        if (address.defaultFlag) {
            string = this.p.getString(R.string.xn_address_default);
            i2 = 1;
        } else {
            i2 = 0;
            string = null;
        }
        if (!TextUtils.isEmpty(address.label)) {
            str = address.label;
            i2++;
        }
        oppO00p.p.setTagsIndex(TagTextView.TAGS_INDEX_AT_END);
        oppO00p.p.setTagTextSize(10);
        TagTextView tagTextView = oppO00p.p;
        tagTextView.setTagTextColor(ContextCompat.getColor(tagTextView.getContext(), R.color.os_text_tertiary_color));
        oppO00p.p.setTagsBackgroundStyle(R.drawable.xn_radius_gray_bg);
        if (i2 == 1) {
            TagTextView tagTextView2 = oppO00p.p;
            if (TextUtils.isEmpty(string)) {
                sb = new StringBuilder();
                sb.append("  ");
                sb.append(str);
            } else {
                sb = new StringBuilder();
                sb.append("  ");
                sb.append(string);
            }
            sb.append("  ");
            String string2 = sb.toString();
            Objects.requireNonNull(string2);
            tagTextView2.setSingleTagAndContent(string2, address.userName);
        } else if (i2 == 2) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("  " + str + "  ");
            arrayList.add("  " + string + "  ");
            oppO00p.p.setMultiTagAndContent(arrayList, address.userName);
        }
        oppO00p.q.setText(this.s.unicodeWrap(fq7.d(address.phone), TextDirectionHeuristics.LTR));
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(address.country)) {
            sb2.append(address.country.trim());
            sb2.append(" ");
        }
        if (!TextUtils.isEmpty(address.province) && !TextUtils.isEmpty(address.district)) {
            sb2.append(address.province.trim());
            sb2.append(" ");
            sb2.append(address.district.trim());
            sb2.append(" ");
        } else if (!TextUtils.isEmpty(address.province) && TextUtils.isEmpty(address.district)) {
            sb2.append(address.province.trim());
            sb2.append(" ");
        } else if (TextUtils.isEmpty(address.province) && !TextUtils.isEmpty(address.district)) {
            sb2.append(address.district.trim());
            sb2.append(" ");
        }
        if (!TextUtils.isEmpty(address.address)) {
            sb2.append(address.address);
        }
        oppO00p.r.setText(sb2.toString());
        oppO00p.s.setTag(Integer.valueOf(i));
        oppO00p.s.setOnClickListener(new k(this));
        oppO00p.itemView.setOnLongClickListener(new l(this, address));
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new OppO00p(LayoutInflater.from(this.p).inflate(R.layout.xn_item_address, viewGroup, false));
    }
}
