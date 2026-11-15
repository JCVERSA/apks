package defpackage;

import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;

public abstract class ij8 {
    public static final ProtoBuf$Type a(ProtoBuf$Type protoBuf$Type, xcb xcbVar) {
        y45.j(protoBuf$Type, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$Type.hasAbbreviatedType()) {
            return protoBuf$Type.getAbbreviatedType();
        }
        if (protoBuf$Type.hasAbbreviatedTypeId()) {
            return xcbVar.a(protoBuf$Type.getAbbreviatedTypeId());
        }
        return null;
    }

    public static final List b(ProtoBuf$Class protoBuf$Class, xcb xcbVar) {
        y45.j(protoBuf$Class, "<this>");
        y45.j(xcbVar, "typeTable");
        List<ProtoBuf$Type> contextReceiverTypeList = protoBuf$Class.getContextReceiverTypeList();
        if (contextReceiverTypeList.isEmpty()) {
            contextReceiverTypeList = null;
        }
        if (contextReceiverTypeList == null) {
            List<Integer> contextReceiverTypeIdList = protoBuf$Class.getContextReceiverTypeIdList();
            y45.i(contextReceiverTypeIdList, "contextReceiverTypeIdList");
            List<Integer> list = contextReceiverTypeIdList;
            contextReceiverTypeList = new ArrayList<>(z71.v(list, 10));
            for (Integer num : list) {
                y45.i(num, "it");
                contextReceiverTypeList.add(xcbVar.a(num.intValue()));
            }
        }
        return contextReceiverTypeList;
    }

    public static final List c(ProtoBuf$Function protoBuf$Function, xcb xcbVar) {
        y45.j(protoBuf$Function, "<this>");
        y45.j(xcbVar, "typeTable");
        List<ProtoBuf$Type> contextReceiverTypeList = protoBuf$Function.getContextReceiverTypeList();
        if (contextReceiverTypeList.isEmpty()) {
            contextReceiverTypeList = null;
        }
        if (contextReceiverTypeList == null) {
            List<Integer> contextReceiverTypeIdList = protoBuf$Function.getContextReceiverTypeIdList();
            y45.i(contextReceiverTypeIdList, "contextReceiverTypeIdList");
            List<Integer> list = contextReceiverTypeIdList;
            contextReceiverTypeList = new ArrayList<>(z71.v(list, 10));
            for (Integer num : list) {
                y45.i(num, "it");
                contextReceiverTypeList.add(xcbVar.a(num.intValue()));
            }
        }
        return contextReceiverTypeList;
    }

    public static final List d(ProtoBuf$Property protoBuf$Property, xcb xcbVar) {
        y45.j(protoBuf$Property, "<this>");
        y45.j(xcbVar, "typeTable");
        List<ProtoBuf$Type> contextReceiverTypeList = protoBuf$Property.getContextReceiverTypeList();
        if (contextReceiverTypeList.isEmpty()) {
            contextReceiverTypeList = null;
        }
        if (contextReceiverTypeList == null) {
            List<Integer> contextReceiverTypeIdList = protoBuf$Property.getContextReceiverTypeIdList();
            y45.i(contextReceiverTypeIdList, "contextReceiverTypeIdList");
            List<Integer> list = contextReceiverTypeIdList;
            contextReceiverTypeList = new ArrayList<>(z71.v(list, 10));
            for (Integer num : list) {
                y45.i(num, "it");
                contextReceiverTypeList.add(xcbVar.a(num.intValue()));
            }
        }
        return contextReceiverTypeList;
    }

    public static final ProtoBuf$Type e(ProtoBuf$TypeAlias protoBuf$TypeAlias, xcb xcbVar) {
        y45.j(protoBuf$TypeAlias, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$TypeAlias.hasExpandedType()) {
            ProtoBuf$Type expandedType = protoBuf$TypeAlias.getExpandedType();
            y45.i(expandedType, "expandedType");
            return expandedType;
        }
        if (protoBuf$TypeAlias.hasExpandedTypeId()) {
            return xcbVar.a(protoBuf$TypeAlias.getExpandedTypeId());
        }
        throw new IllegalStateException("No expandedType in ProtoBuf.TypeAlias");
    }

    public static final ProtoBuf$Type f(ProtoBuf$Type protoBuf$Type, xcb xcbVar) {
        y45.j(protoBuf$Type, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$Type.hasFlexibleUpperBound()) {
            return protoBuf$Type.getFlexibleUpperBound();
        }
        if (protoBuf$Type.hasFlexibleUpperBoundId()) {
            return xcbVar.a(protoBuf$Type.getFlexibleUpperBoundId());
        }
        return null;
    }

    public static final boolean g(ProtoBuf$Function protoBuf$Function) {
        y45.j(protoBuf$Function, "<this>");
        return protoBuf$Function.hasReceiverType() || protoBuf$Function.hasReceiverTypeId();
    }

    public static final boolean h(ProtoBuf$Property protoBuf$Property) {
        y45.j(protoBuf$Property, "<this>");
        return protoBuf$Property.hasReceiverType() || protoBuf$Property.hasReceiverTypeId();
    }

    public static final ProtoBuf$Type i(ProtoBuf$Class protoBuf$Class, xcb xcbVar) {
        y45.j(protoBuf$Class, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$Class.hasInlineClassUnderlyingType()) {
            return protoBuf$Class.getInlineClassUnderlyingType();
        }
        if (protoBuf$Class.hasInlineClassUnderlyingTypeId()) {
            return xcbVar.a(protoBuf$Class.getInlineClassUnderlyingTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type j(ProtoBuf$Type protoBuf$Type, xcb xcbVar) {
        y45.j(protoBuf$Type, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$Type.hasOuterType()) {
            return protoBuf$Type.getOuterType();
        }
        if (protoBuf$Type.hasOuterTypeId()) {
            return xcbVar.a(protoBuf$Type.getOuterTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type k(ProtoBuf$Function protoBuf$Function, xcb xcbVar) {
        y45.j(protoBuf$Function, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$Function.hasReceiverType()) {
            return protoBuf$Function.getReceiverType();
        }
        if (protoBuf$Function.hasReceiverTypeId()) {
            return xcbVar.a(protoBuf$Function.getReceiverTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type l(ProtoBuf$Property protoBuf$Property, xcb xcbVar) {
        y45.j(protoBuf$Property, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$Property.hasReceiverType()) {
            return protoBuf$Property.getReceiverType();
        }
        if (protoBuf$Property.hasReceiverTypeId()) {
            return xcbVar.a(protoBuf$Property.getReceiverTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type m(ProtoBuf$Function protoBuf$Function, xcb xcbVar) {
        y45.j(protoBuf$Function, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$Function.hasReturnType()) {
            ProtoBuf$Type returnType = protoBuf$Function.getReturnType();
            y45.i(returnType, "returnType");
            return returnType;
        }
        if (protoBuf$Function.hasReturnTypeId()) {
            return xcbVar.a(protoBuf$Function.getReturnTypeId());
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Function");
    }

    public static final ProtoBuf$Type n(ProtoBuf$Property protoBuf$Property, xcb xcbVar) {
        y45.j(protoBuf$Property, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$Property.hasReturnType()) {
            ProtoBuf$Type returnType = protoBuf$Property.getReturnType();
            y45.i(returnType, "returnType");
            return returnType;
        }
        if (protoBuf$Property.hasReturnTypeId()) {
            return xcbVar.a(protoBuf$Property.getReturnTypeId());
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Property");
    }

    public static final List o(ProtoBuf$Class protoBuf$Class, xcb xcbVar) {
        y45.j(protoBuf$Class, "<this>");
        y45.j(xcbVar, "typeTable");
        List<ProtoBuf$Type> supertypeList = protoBuf$Class.getSupertypeList();
        if (supertypeList.isEmpty()) {
            supertypeList = null;
        }
        if (supertypeList == null) {
            List<Integer> supertypeIdList = protoBuf$Class.getSupertypeIdList();
            y45.i(supertypeIdList, "supertypeIdList");
            List<Integer> list = supertypeIdList;
            supertypeList = new ArrayList<>(z71.v(list, 10));
            for (Integer num : list) {
                y45.i(num, "it");
                supertypeList.add(xcbVar.a(num.intValue()));
            }
        }
        return supertypeList;
    }

    public static final ProtoBuf$Type p(ProtoBuf$Type.Argument argument, xcb xcbVar) {
        y45.j(argument, "<this>");
        y45.j(xcbVar, "typeTable");
        if (argument.hasType()) {
            return argument.getType();
        }
        if (argument.hasTypeId()) {
            return xcbVar.a(argument.getTypeId());
        }
        return null;
    }

    public static final ProtoBuf$Type q(ProtoBuf$ValueParameter protoBuf$ValueParameter, xcb xcbVar) {
        y45.j(protoBuf$ValueParameter, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$ValueParameter.hasType()) {
            ProtoBuf$Type type = protoBuf$ValueParameter.getType();
            y45.i(type, "type");
            return type;
        }
        if (protoBuf$ValueParameter.hasTypeId()) {
            return xcbVar.a(protoBuf$ValueParameter.getTypeId());
        }
        throw new IllegalStateException("No type in ProtoBuf.ValueParameter");
    }

    public static final ProtoBuf$Type r(ProtoBuf$TypeAlias protoBuf$TypeAlias, xcb xcbVar) {
        y45.j(protoBuf$TypeAlias, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$TypeAlias.hasUnderlyingType()) {
            ProtoBuf$Type underlyingType = protoBuf$TypeAlias.getUnderlyingType();
            y45.i(underlyingType, "underlyingType");
            return underlyingType;
        }
        if (protoBuf$TypeAlias.hasUnderlyingTypeId()) {
            return xcbVar.a(protoBuf$TypeAlias.getUnderlyingTypeId());
        }
        throw new IllegalStateException("No underlyingType in ProtoBuf.TypeAlias");
    }

    public static final List s(ProtoBuf$TypeParameter protoBuf$TypeParameter, xcb xcbVar) {
        y45.j(protoBuf$TypeParameter, "<this>");
        y45.j(xcbVar, "typeTable");
        List<ProtoBuf$Type> upperBoundList = protoBuf$TypeParameter.getUpperBoundList();
        if (upperBoundList.isEmpty()) {
            upperBoundList = null;
        }
        if (upperBoundList == null) {
            List<Integer> upperBoundIdList = protoBuf$TypeParameter.getUpperBoundIdList();
            y45.i(upperBoundIdList, "upperBoundIdList");
            List<Integer> list = upperBoundIdList;
            upperBoundList = new ArrayList<>(z71.v(list, 10));
            for (Integer num : list) {
                y45.i(num, "it");
                upperBoundList.add(xcbVar.a(num.intValue()));
            }
        }
        return upperBoundList;
    }

    public static final ProtoBuf$Type t(ProtoBuf$ValueParameter protoBuf$ValueParameter, xcb xcbVar) {
        y45.j(protoBuf$ValueParameter, "<this>");
        y45.j(xcbVar, "typeTable");
        if (protoBuf$ValueParameter.hasVarargElementType()) {
            return protoBuf$ValueParameter.getVarargElementType();
        }
        if (protoBuf$ValueParameter.hasVarargElementTypeId()) {
            return xcbVar.a(protoBuf$ValueParameter.getVarargElementTypeId());
        }
        return null;
    }
}
