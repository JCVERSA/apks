.class public final synthetic Lar9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led7;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar9;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final subscribe(Lrc7;)V
    .locals 0

    iget-object p0, p0, Lar9;->a:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/SniffMultiVideoSheetActivity;->j0(Ljava/util/List;Lrc7;)V

    return-void
.end method
