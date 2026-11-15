.class public abstract Lcgc$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcgc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final a:Lcgc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcgc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcgc;-><init>(Lcgc$a;)V

    sput-object v0, Lcgc$c;->a:Lcgc;

    return-void
.end method

.method public static synthetic a()Lcgc;
    .locals 1

    sget-object v0, Lcgc$c;->a:Lcgc;

    return-object v0
.end method
