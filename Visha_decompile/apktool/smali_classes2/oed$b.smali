.class public abstract Loed$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Loed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loed;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loed;-><init>(Loed$a;)V

    sput-object v0, Loed$b;->a:Loed;

    return-void
.end method

.method public static synthetic a()Loed;
    .locals 1

    sget-object v0, Loed$b;->a:Loed;

    return-object v0
.end method
