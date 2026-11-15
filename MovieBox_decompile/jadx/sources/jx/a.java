package jx;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.login.R$layout;
import com.transsnet.login.country.SelectCountryViewModel;
import com.transsnet.loginapi.bean.Country;
import java.util.List;

public class a extends RecyclerView.Adapter {

    private SelectCountryViewModel f63366a;

    private List f63367b;

    private Context f63368c;

    public a(Context context, SelectCountryViewModel selectCountryViewModel, List list) {
        this.f63367b = list;
        this.f63368c = context;
        this.f63366a = selectCountryViewModel;
    }

    @Override
    public void onBindViewHolder(c cVar, int i10) {
        List list = this.f63367b;
        if (list == null || i10 < 0 || i10 >= list.size()) {
            return;
        }
        cVar.g((Country) this.f63367b.get(i10), this.f63366a);
    }

    @Override
    public int getItemCount() {
        List list = this.f63367b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override
    public c onCreateViewHolder(ViewGroup viewGroup, int i10) {
        View viewInflate = LayoutInflater.from(this.f63368c).inflate(R$layout.login_item_country, viewGroup, false);
        if (viewInflate.getLayoutParams() == null) {
            viewInflate.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
        }
        return new c(viewInflate);
    }

    public void i(List list) {
        this.f63367b = list;
        notifyDataSetChanged();
    }
}
