.class public final synthetic Lmh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh0;->b:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    iput-wide p2, p0, Lmh0;->c:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmh0;->b:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    iget-wide v1, p0, Lmh0;->c:J

    check-cast p1, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->c(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;JLcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
