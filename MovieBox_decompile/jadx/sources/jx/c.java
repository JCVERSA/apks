package jx;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.login.R$id;
import com.transsnet.login.country.SelectCountryViewModel;
import com.transsnet.loginapi.bean.Country;

public class c extends RecyclerView.a0 {

    private View f63371a;

    private TextView f63372b;

    private TextView f63373c;

    private TextView f63374d;

    public c(View view) {
        super(view);
        this.f63371a = view.findViewById(R$id.index_layout);
        this.f63372b = (TextView) view.findViewById(R$id.index_tv);
        this.f63373c = (TextView) view.findViewById(R$id.name);
        this.f63374d = (TextView) view.findViewById(R$id.code);
    }

    public void g(final Country country, final SelectCountryViewModel selectCountryViewModel) {
        this.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                selectCountryViewModel.r(country);
            }
        });
        if (TextUtils.isEmpty(country.getIndex())) {
            this.f63371a.setVisibility(8);
        } else {
            this.f63371a.setVisibility(0);
            this.f63372b.setText(country.getIndex());
        }
        this.f63373c.setText(country.getCountry());
        this.f63374d.setText(country.getCodeAndAdd());
    }
}
