package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;

public class s92 extends DeserializedMemberScope {
    public final dv7 g;
    public final String h;
    public final o54 i;

    public s92(dv7 dv7Var, ProtoBuf$Package protoBuf$Package, cy6 cy6Var, se0 se0Var, p92 p92Var, e92 e92Var, String str, c74 c74Var) {
        y45.j(dv7Var, "packageDescriptor");
        y45.j(protoBuf$Package, "proto");
        y45.j(cy6Var, "nameResolver");
        y45.j(se0Var, "metadataVersion");
        y45.j(e92Var, "components");
        y45.j(str, "debugName");
        y45.j(c74Var, "classNames");
        ProtoBuf$TypeTable typeTable = protoBuf$Package.getTypeTable();
        y45.i(typeTable, "proto.typeTable");
        xcb xcbVar = new xcb(typeTable);
        qob.a aVar = qob.b;
        ProtoBuf$VersionRequirementTable versionRequirementTable = protoBuf$Package.getVersionRequirementTable();
        y45.i(versionRequirementTable, "proto.versionRequirementTable");
        i92 i92VarA = e92Var.a(dv7Var, cy6Var, xcbVar, aVar.a(versionRequirementTable), se0Var, p92Var);
        List<ProtoBuf$Function> functionList = protoBuf$Package.getFunctionList();
        y45.i(functionList, "proto.functionList");
        List<ProtoBuf$Property> propertyList = protoBuf$Package.getPropertyList();
        y45.i(propertyList, "proto.propertyList");
        List<ProtoBuf$TypeAlias> typeAliasList = protoBuf$Package.getTypeAliasList();
        y45.i(typeAliasList, "proto.typeAliasList");
        super(i92VarA, functionList, propertyList, typeAliasList, c74Var);
        this.g = dv7Var;
        this.h = str;
        this.i = dv7Var.d();
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        z(by6Var, or5Var);
        return super.f(by6Var, or5Var);
    }

    @Override
    public void i(Collection collection, e74 e74Var) {
        y45.j(collection, "result");
        y45.j(e74Var, "nameFilter");
    }

    @Override
    public xw0 m(by6 by6Var) {
        y45.j(by6Var, "name");
        return new xw0(this.i, by6Var);
    }

    @Override
    public Set s() {
        return ye9.f();
    }

    @Override
    public Set t() {
        return ye9.f();
    }

    public String toString() {
        return this.h;
    }

    @Override
    public Set u() {
        return ye9.f();
    }

    @Override
    public boolean w(by6 by6Var) {
        y45.j(by6Var, "name");
        if (!super.w(by6Var)) {
            Iterable iterableK = p().c().k();
            if (!(iterableK instanceof Collection) || !((Collection) iterableK).isEmpty()) {
                Iterator it = iterableK.iterator();
                while (it.hasNext()) {
                    if (((sw0) it.next()).a(this.i, by6Var)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override
    public List g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        Collection collectionJ = j(u82Var, e74Var, NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
        Iterable iterableK = p().c().k();
        ArrayList arrayList = new ArrayList();
        Iterator it = iterableK.iterator();
        while (it.hasNext()) {
            d81.C(arrayList, ((sw0) it.next()).c(this.i));
        }
        return i81.J0(collectionJ, arrayList);
    }

    public void z(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        fmb.b(p().c().o(), or5Var, this.g, by6Var);
    }
}
