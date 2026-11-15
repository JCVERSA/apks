.class public final synthetic Lcu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Ltn$b;


# direct methods
.method public synthetic constructor <init>(Ltn$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcu6;->b:Ltn$b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcu6;->b:Ltn$b;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/MusicHelper;->h(Ltn$b;Ljava/lang/Throwable;)V

    return-void
.end method
