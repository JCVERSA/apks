.class public abstract Lnw8$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnw8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lnw8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnw8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnw8;-><init>(Lnw8$a;)V

    sput-object v0, Lnw8$b;->a:Lnw8;

    return-void
.end method

.method public static synthetic a()Lnw8;
    .locals 1

    sget-object v0, Lnw8$b;->a:Lnw8;

    return-object v0
.end method
