.class public abstract Luti;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltti;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lxti;->c:Lxti;

    new-instance v0, Ltti;

    invoke-direct {v0}, Ltti;-><init>()V

    sput-object v0, Luti;->a:Ltti;

    return-void
.end method

.method public static a()Ltti;
    .locals 1

    sget-object v0, Luti;->a:Ltti;

    return-object v0
.end method
