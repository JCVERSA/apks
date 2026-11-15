package com.transsion.tools.beans;

import com.transsion.dbdata.beans.SkinsMenu;
import java.util.List;

public class ThemeBean {
    private DataBean data;

    public static class DataBean {
        private List<SkinsMenu> list;

        public List<SkinsMenu> getList() {
            return this.list;
        }

        public void setList(List<SkinsMenu> list) {
            this.list = list;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }
}
