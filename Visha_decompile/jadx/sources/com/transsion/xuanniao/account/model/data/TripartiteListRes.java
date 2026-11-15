package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;
import java.util.ArrayList;

public class TripartiteListRes implements Serializable {
    public ArrayList<Tripartite> tripartite;

    public static class Tripartite implements Serializable {
        public int thirdType;
        public String username;
    }
}
