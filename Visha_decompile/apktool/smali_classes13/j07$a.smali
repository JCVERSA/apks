.class public abstract Lj07$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lj07;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj07;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj07;-><init>(Lk07;)V

    sput-object v0, Lj07$a;->a:Lj07;

    return-void
.end method

.method public static bridge synthetic a()Lj07;
    .locals 1

    sget-object v0, Lj07$a;->a:Lj07;

    return-object v0
.end method
