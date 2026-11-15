package com.hisavana.common.interfacz;

import com.hisavana.common.bean.Network;
import java.util.List;

public interface QueryPriceListener {
    void onQueryPriceFailed();

    void onQueryPriceSuccess(List<Network> list);
}
