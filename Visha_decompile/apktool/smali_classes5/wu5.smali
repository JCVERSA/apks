.class public final synthetic Lwu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/LrcViewNew;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/LrcViewNew;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwu5;->b:Lcom/transsion/audio/widgets/LrcViewNew;

    iput-object p2, p0, Lwu5;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwu5;->b:Lcom/transsion/audio/widgets/LrcViewNew;

    iget-object p0, p0, Lwu5;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/audio/widgets/LrcViewNew;->c(Lcom/transsion/audio/widgets/LrcViewNew;Ljava/lang/String;)V

    return-void
.end method
