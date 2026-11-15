.class public final Ltp5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltp5;

.field public static b:Lvp5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltp5;

    invoke-direct {v0}, Ltp5;-><init>()V

    sput-object v0, Ltp5;->a:Ltp5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p0, "tag"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "message"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ltp5;->b:Lvp5;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-interface {p0, v0, p1, p2}, Lvp5;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p0, "tag"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "message"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ltp5;->b:Lvp5;

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    invoke-interface {p0, v0, p1, p2}, Lvp5;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Lvp5;)V
    .locals 0

    sput-object p1, Ltp5;->b:Lvp5;

    return-void
.end method
