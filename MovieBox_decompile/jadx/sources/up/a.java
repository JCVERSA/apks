package up;

import cm.g;
import java.util.HashSet;

public final class a implements g {
    @Override
    public HashSet providerParams() {
        HashSet hashSet = new HashSet();
        hashSet.add("sa_history_lines_double");
        hashSet.add("sa_search_suggest_use_google");
        hashSet.add("google_suggest_api_config");
        hashSet.add("sa_search_suggest_use_google_for_showbox");
        hashSet.add("google_suggest_api_config_for_showbox");
        return hashSet;
    }
}
