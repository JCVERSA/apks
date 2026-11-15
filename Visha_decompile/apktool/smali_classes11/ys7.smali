.class public final synthetic Lys7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lzs7;


# direct methods
.method public synthetic constructor <init>(Lzs7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lys7;->a:Lzs7;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lys7;->a:Lzs7;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lzs7;->a(Lzs7;Ljava/lang/Integer;)Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method
