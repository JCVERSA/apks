.class public final synthetic Lzgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lahh;


# direct methods
.method public synthetic constructor <init>(Lahh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzgh;->a:Lahh;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzgh;->a:Lahh;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p0, p1}, Lahh;->a(Lahh;Ljava/lang/Exception;)Lbhh;

    move-result-object p0

    return-object p0
.end method
