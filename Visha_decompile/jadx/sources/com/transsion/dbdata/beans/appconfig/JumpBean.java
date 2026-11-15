package com.transsion.dbdata.beans.appconfig;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import java.util.List;

@Keep
public class JumpBean {
    private List<JumpInfo> external_jump_info_list;

    public class JumpInfo {
        private String bottom_content;
        private int id;
        private String jump_app_name;
        private String jump_app_pkg;
        private int jump_app_version;
        private String jump_app_version_list;
        private int jump_app_version_symbol;
        private String model;
        private int router_distribute_id;
        private RouterBean router_distribute_info;
        private String version_list;
        private int version_symbol;

        public JumpInfo() {
        }

        public String getBottom_content() {
            return this.bottom_content;
        }

        public int getId() {
            return this.id;
        }

        public String getJump_app_name() {
            return this.jump_app_name;
        }

        public String getJump_app_pkg() {
            return this.jump_app_pkg;
        }

        public int getJump_app_version() {
            return this.jump_app_version;
        }

        public int getJump_app_version_symbol() {
            return this.jump_app_version_symbol;
        }

        public String getModel() {
            return this.model;
        }

        public int getRouter_distribute_id() {
            return this.router_distribute_id;
        }

        public RouterBean getRouter_distribute_info() {
            return this.router_distribute_info;
        }

        public String getVersion_list() {
            return this.version_list;
        }

        public int getVersion_symbol() {
            return this.version_symbol;
        }

        public boolean needJump(int i) {
            int i2 = this.jump_app_version_symbol;
            if (i2 == 0) {
                return i == this.jump_app_version;
            }
            if (i2 == 1) {
                return i > this.jump_app_version;
            }
            return i < this.jump_app_version;
        }

        public void setBottom_content(String str) {
            this.bottom_content = str;
        }

        public void setId(int i) {
            this.id = i;
        }

        public void setJump_app_name(String str) {
            this.jump_app_name = str;
        }

        public void setJump_app_pkg(String str) {
            this.jump_app_pkg = str;
        }

        public void setJump_app_version(int i) {
            this.jump_app_version = i;
        }

        public void setJump_app_version_list(String str) {
            this.jump_app_version_list = str;
        }

        public void setJump_app_version_symbol(int i) {
            this.jump_app_version_symbol = i;
        }

        public void setModel(String str) {
            this.model = str;
        }

        public void setRouter_distribute_id(int i) {
            this.router_distribute_id = i;
        }

        public void setRouter_distribute_info(RouterBean routerBean) {
            this.router_distribute_info = routerBean;
        }

        public void setVersion_list(String str) {
            this.version_list = str;
        }

        public void setVersion_symbol(int i) {
            this.version_symbol = i;
        }

        @NonNull
        public String toString() {
            return "JumpInfo{id=" + this.id + ", model=" + this.model + ", jump_app_name='" + this.jump_app_name + "', jump_app_pkg='" + this.jump_app_pkg + "', jump_app_version='" + this.jump_app_version + "', jump_app_version_symbol='" + this.jump_app_version_symbol + "', bottom_content='" + this.bottom_content + "', version_list=" + this.version_list + ", version_symbol=" + this.version_symbol + ", router_distribute_id=" + this.router_distribute_id + ", router_distribute_info='" + this.router_distribute_info + "'}";
        }
    }

    public List<JumpInfo> getExternal_jump_info_list() {
        return this.external_jump_info_list;
    }

    public void setExternal_jump_info_list(List<JumpInfo> list) {
        this.external_jump_info_list = list;
    }

    public String toString() {
        return "JumpBean{external_jump_info_list=" + this.external_jump_info_list + '}';
    }
}
