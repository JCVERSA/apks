.class public Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;->elements()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions$a;->a:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/security/Permission;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasMoreElements()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions$a;->a()Ljava/security/Permission;

    move-result-object p0

    return-object p0
.end method
