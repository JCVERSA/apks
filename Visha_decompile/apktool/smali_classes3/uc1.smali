.class public final synthetic Luc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpj8;


# instance fields
.field public final synthetic a:Lxc1;

.field public final synthetic b:Lzb1;


# direct methods
.method public synthetic constructor <init>(Lxc1;Lzb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc1;->a:Lxc1;

    iput-object p2, p0, Luc1;->b:Lzb1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Luc1;->a:Lxc1;

    iget-object p0, p0, Luc1;->b:Lzb1;

    invoke-static {v0, p0}, Lxc1;->h(Lxc1;Lzb1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
