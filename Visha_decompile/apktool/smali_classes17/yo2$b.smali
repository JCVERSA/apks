.class public final Lyo2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyo2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyo2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lyo2$b;->c()V

    return-void
.end method

.method public static final c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lyo2$e;Lyo2$a;)Ljn5;
    .locals 0

    const-string p0, "request"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lzo2;

    invoke-direct {p0}, Lzo2;-><init>()V

    return-object p0
.end method
