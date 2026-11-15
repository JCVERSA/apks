.class public abstract Lle3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lle3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lle3;

    invoke-direct {v0}, Lle3;-><init>()V

    sput-object v0, Lle3$a;->a:Lle3;

    return-void
.end method

.method public static synthetic a()Lle3;
    .locals 1

    sget-object v0, Lle3$a;->a:Lle3;

    return-object v0
.end method
