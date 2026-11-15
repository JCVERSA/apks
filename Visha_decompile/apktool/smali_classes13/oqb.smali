.class public final synthetic Loqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/database/VideoPlayList;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/b$a;Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Loqb;->b:Lcom/transsion/dbdata/database/VideoPlayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Loqb;->b:Lcom/transsion/dbdata/database/VideoPlayList;

    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/b;->a(Lcom/transsion/sniffer_load/b$a;Lcom/transsion/dbdata/database/VideoPlayList;Ljava/lang/Boolean;)V

    return-void
.end method
