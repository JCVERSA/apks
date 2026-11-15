.class public abstract Lsna$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lsna;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsna;

    invoke-direct {v0}, Lsna;-><init>()V

    sput-object v0, Lsna$a;->a:Lsna;

    return-void
.end method

.method public static synthetic a()Lsna;
    .locals 1

    sget-object v0, Lsna$a;->a:Lsna;

    return-object v0
.end method
