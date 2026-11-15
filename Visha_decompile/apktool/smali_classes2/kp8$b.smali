.class public abstract Lkp8$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkp8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lkp8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkp8$b$a;

    invoke-direct {v0}, Lkp8$b$a;-><init>()V

    sput-object v0, Lkp8$b;->a:Lkp8;

    return-void
.end method

.method public static synthetic a()Lkp8;
    .locals 1

    sget-object v0, Lkp8$b;->a:Lkp8;

    return-object v0
.end method
