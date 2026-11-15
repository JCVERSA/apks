package com.transsion.xuanniao.account.login.view;

import android.content.Context;
import android.text.BidiFormatter;
import android.text.TextDirectionHeuristics;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.CountryData;
import defpackage.xo7;
import java.util.ArrayList;
import org.slf4j.Marker;

public class OppO0OO extends RecyclerView.Adapter<OppO00p> {
    public ArrayList o;
    public Context p;
    public a q;
    public boolean r = false;
    public BidiFormatter s = BidiFormatter.getInstance();
    public String t;

    public static class OppO00p extends RecyclerView.ViewHolder {
        public TextView p;
        public TextView q;
        public RadioButton r;

        public OppO00p(View view) {
            super(view);
            this.p = (TextView) view.findViewById(R.id.name);
            this.q = (TextView) view.findViewById(R.id.code);
            this.r = (RadioButton) view.findViewById(R.id.radio);
        }
    }

    public interface a {
    }

    public OppO0OO(Context context, ArrayList arrayList) {
        this.p = context;
        this.o = arrayList;
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return;
        }
        this.t = str + "#" + str2;
        if (TextUtils.isEmpty(str)) {
            if (str2 != null) {
                String enName = CountryData.getEnName(this.p, str2, this.o);
                if (!TextUtils.isEmpty(enName)) {
                    str2 = enName;
                }
                for (int i = 0; i < this.o.size(); i++) {
                    ((CountryData.Country) this.o.get(i)).isSelected = str2.equals(((CountryData.Country) this.o.get(i)).country);
                }
                return;
            }
            return;
        }
        for (int i2 = 0; i2 < this.o.size(); i2++) {
            if ("1".equals(str) || "7".equals(str)) {
                ((CountryData.Country) this.o.get(i2)).isSelected = str.equals(((CountryData.Country) this.o.get(i2)).code) && (TextUtils.equals(str2, ((CountryData.Country) this.o.get(i2)).displayName) || TextUtils.equals(str2, ((CountryData.Country) this.o.get(i2)).country));
            } else {
                ((CountryData.Country) this.o.get(i2)).isSelected = str.equals(((CountryData.Country) this.o.get(i2)).code);
            }
        }
    }

    public void c(ArrayList arrayList) {
        String str;
        ArrayList arrayList2 = new ArrayList();
        this.o = arrayList2;
        arrayList2.addAll(arrayList);
        if (this.o == null) {
            str = this.t;
            break;
        }
        int i = 0;
        while (true) {
            if (i >= this.o.size()) {
                str = this.t;
                break;
            }
            if (((CountryData.Country) this.o.get(i)).isSelected) {
                str = ((CountryData.Country) this.o.get(i)).code + "#" + ((CountryData.Country) this.o.get(i)).country;
                break;
            }
            i++;
        }
        Log.d("com.palm.id.log", "setCountries selectedCc = " + str);
        if (str != null) {
            String[] strArrSplit = str.split("#");
            if (strArrSplit.length == 2) {
                b(strArrSplit[0], strArrSplit[1]);
            } else if (strArrSplit.length == 1) {
                if (str.startsWith("#")) {
                    b("", strArrSplit[0]);
                } else {
                    b(strArrSplit[0], "");
                }
            }
        }
        notifyDataSetChanged();
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
        OppO00p oppO00p = (OppO00p) viewHolder;
        CountryData.Country country = (CountryData.Country) this.o.get(i);
        oppO00p.p.setText(country.displayName);
        if (this.r) {
            oppO00p.q.setVisibility(4);
        } else {
            TextView textView = oppO00p.q;
            BidiFormatter bidiFormatter = this.s;
            StringBuilder sbA = xo7.a(Marker.ANY_NON_NULL_MARKER);
            sbA.append(country.code);
            textView.setText(bidiFormatter.unicodeWrap(sbA.toString(), TextDirectionHeuristics.LTR));
            oppO00p.q.setVisibility(0);
        }
        oppO00p.r.setChecked(country.isSelected);
        oppO00p.r.setOnClickListener(new com.transsion.xuanniao.account.login.view.a(this, country));
        oppO00p.itemView.setOnClickListener(new b(this, country));
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new OppO00p(LayoutInflater.from(this.p).inflate(R.layout.xn_item_country, viewGroup, false));
    }
}
