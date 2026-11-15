.class public final synthetic Lmhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/WebActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/WebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmhc;->b:Lcom/transsion/sniffer_load/WebActivity;

    iput-object p2, p0, Lmhc;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmhc;->b:Lcom/transsion/sniffer_load/WebActivity;

    iget-object p0, p0, Lmhc;->c:Ljava/lang/String;

    check-cast p1, Lcom/transsion/sniffer_load/WebActivity;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/WebActivity;->w0(Lcom/transsion/sniffer_load/WebActivity;Ljava/lang/String;Lcom/transsion/sniffer_load/WebActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
