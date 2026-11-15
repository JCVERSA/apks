.class public abstract Lmb8$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lmb8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmb8;

    invoke-direct {v0}, Lmb8;-><init>()V

    sput-object v0, Lmb8$c;->a:Lmb8;

    return-void
.end method

.method public static bridge synthetic a()Lmb8;
    .locals 1

    sget-object v0, Lmb8$c;->a:Lmb8;

    return-object v0
.end method
