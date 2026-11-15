.class public abstract Lrna$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lrna;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrna;

    invoke-direct {v0}, Lrna;-><init>()V

    sput-object v0, Lrna$a;->a:Lrna;

    return-void
.end method

.method public static synthetic a()Lrna;
    .locals 1

    sget-object v0, Lrna$a;->a:Lrna;

    return-object v0
.end method
