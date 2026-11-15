.class public final synthetic Lwt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/net/Uri;

    invoke-static {p1, p2}, Lcom/transsion/audio/widgets/MusicHelper;->f(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
