package com.just.agentweb;

public class HookManager {
    public static AgentWeb hookAgentWeb(AgentWeb agentWeb, AgentWeb.AgentBuilder agentBuilder) {
        return agentWeb;
    }

    public static boolean permissionHook(String str, String[] strArr) {
        return true;
    }
}
