package com.transsion.vishaplayersdk.gsyplayer;

import com.transsion.livecaption.constant.ICode;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0007J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\r"}, d2 = {"Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver;", "", MethodDecl.initName, "()V", "resolveMute", "", "hasUserIntent", "userWantsMute", "systemTemporarilyMuted", "pageDefaultMute", ICode.CALL.CALL_KEY_STATE, "Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;", "State", "vishaplayersdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MuteStateResolver {
    public static final MuteStateResolver INSTANCE = new MuteStateResolver();

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00032\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/transsion/vishaplayersdk/gsyplayer/MuteStateResolver$State;", "", "hasUserIntent", "", "userWantsMute", "systemTemporarilyMuted", "pageDefaultMute", MethodDecl.initName, "(ZZZZ)V", "getHasUserIntent", "()Z", "getUserWantsMute", "getSystemTemporarilyMuted", "getPageDefaultMute", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "", "vishaplayersdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class State {
        private final boolean hasUserIntent;
        private final boolean pageDefaultMute;
        private final boolean systemTemporarilyMuted;
        private final boolean userWantsMute;

        public State(boolean z, boolean z2, boolean z3, boolean z4) {
            this.hasUserIntent = z;
            this.userWantsMute = z2;
            this.systemTemporarilyMuted = z3;
            this.pageDefaultMute = z4;
        }

        public static State copy$default(State state, boolean z, boolean z2, boolean z3, boolean z4, int i, Object obj) {
            if ((i & 1) != 0) {
                z = state.hasUserIntent;
            }
            if ((i & 2) != 0) {
                z2 = state.userWantsMute;
            }
            if ((i & 4) != 0) {
                z3 = state.systemTemporarilyMuted;
            }
            if ((i & 8) != 0) {
                z4 = state.pageDefaultMute;
            }
            return state.copy(z, z2, z3, z4);
        }

        public final boolean getHasUserIntent() {
            return this.hasUserIntent;
        }

        public final boolean getUserWantsMute() {
            return this.userWantsMute;
        }

        public final boolean getSystemTemporarilyMuted() {
            return this.systemTemporarilyMuted;
        }

        public final boolean getPageDefaultMute() {
            return this.pageDefaultMute;
        }

        public final State copy(boolean hasUserIntent, boolean userWantsMute, boolean systemTemporarilyMuted, boolean pageDefaultMute) {
            return new State(hasUserIntent, userWantsMute, systemTemporarilyMuted, pageDefaultMute);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof State)) {
                return false;
            }
            State state = (State) other;
            return this.hasUserIntent == state.hasUserIntent && this.userWantsMute == state.userWantsMute && this.systemTemporarilyMuted == state.systemTemporarilyMuted && this.pageDefaultMute == state.pageDefaultMute;
        }

        public final boolean getHasUserIntent() {
            return this.hasUserIntent;
        }

        public final boolean getPageDefaultMute() {
            return this.pageDefaultMute;
        }

        public final boolean getSystemTemporarilyMuted() {
            return this.systemTemporarilyMuted;
        }

        public final boolean getUserWantsMute() {
            return this.userWantsMute;
        }

        public int hashCode() {
            return (((((Boolean.hashCode(this.hasUserIntent) * 31) + Boolean.hashCode(this.userWantsMute)) * 31) + Boolean.hashCode(this.systemTemporarilyMuted)) * 31) + Boolean.hashCode(this.pageDefaultMute);
        }

        public String toString() {
            return "State(hasUserIntent=" + this.hasUserIntent + ", userWantsMute=" + this.userWantsMute + ", systemTemporarilyMuted=" + this.systemTemporarilyMuted + ", pageDefaultMute=" + this.pageDefaultMute + ")";
        }
    }

    private MuteStateResolver() {
    }

    public static final boolean resolveMute(boolean hasUserIntent, boolean userWantsMute, boolean systemTemporarilyMuted, boolean pageDefaultMute) {
        if (hasUserIntent) {
            return userWantsMute;
        }
        if (systemTemporarilyMuted) {
            return true;
        }
        return pageDefaultMute;
    }

    public static final boolean resolveMute(State state) {
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        return resolveMute(state.getHasUserIntent(), state.getUserWantsMute(), state.getSystemTemporarilyMuted(), state.getPageDefaultMute());
    }
}
