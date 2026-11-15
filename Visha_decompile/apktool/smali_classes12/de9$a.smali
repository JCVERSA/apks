.class public abstract Lde9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lde9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lde9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde9;-><init>(Lee9;)V

    sput-object v0, Lde9$a;->a:Lde9;

    return-void
.end method

.method public static bridge synthetic a()Lde9;
    .locals 1

    sget-object v0, Lde9$a;->a:Lde9;

    return-object v0
.end method
