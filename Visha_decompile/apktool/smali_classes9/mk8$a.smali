.class public abstract Lmk8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmk8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lmk8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmk8;

    invoke-direct {v0}, Lmk8;-><init>()V

    sput-object v0, Lmk8$a;->a:Lmk8;

    return-void
.end method

.method public static synthetic a()Lmk8;
    .locals 1

    sget-object v0, Lmk8$a;->a:Lmk8;

    return-object v0
.end method
