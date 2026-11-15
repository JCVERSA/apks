package com.transsion.push.db;

import com.transsion.push.bean.PermanentItemBean;
import java.util.List;
import kotlin.coroutines.Continuation;

public interface a {
    Object a(Continuation continuation);

    Object b(List list, Continuation continuation);

    Object c(Continuation continuation);

    Object d(PermanentItemBean permanentItemBean, Continuation continuation);
}
