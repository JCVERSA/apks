.class public abstract Lnti;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmti;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lxti;->c:Lxti;

    new-instance v0, Lmti;

    invoke-direct {v0}, Lmti;-><init>()V

    sput-object v0, Lnti;->a:Lmti;

    return-void
.end method

.method public static a()Lmti;
    .locals 1

    sget-object v0, Lnti;->a:Lmti;

    return-object v0
.end method
