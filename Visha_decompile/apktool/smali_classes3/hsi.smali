.class public abstract Lhsi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfsi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgsi;

    invoke-direct {v0}, Lgsi;-><init>()V

    sput-object v0, Lhsi;->a:Lfsi;

    sget-object v0, Lxti;->c:Lxti;

    return-void
.end method

.method public static a()Lfsi;
    .locals 1

    sget-object v0, Lhsi;->a:Lfsi;

    return-object v0
.end method
