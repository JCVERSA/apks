.class public abstract Lku4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lku4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lku4;Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lxv4$a;->a(Lxv4;Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method
