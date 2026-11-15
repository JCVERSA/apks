.class public final synthetic Lz4d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/athena/hatnea/atenha;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/athena/hatnea/atenha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4d;->b:Lcom/transsion/athena/hatnea/atenha;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lz4d;->b:Lcom/transsion/athena/hatnea/atenha;

    invoke-static {p0}, Lcom/transsion/athena/hatnea/atenha;->d(Lcom/transsion/athena/hatnea/atenha;)V

    return-void
.end method
