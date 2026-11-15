.class public final synthetic Ldw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldw7;->b:Ljava/lang/String;

    iput-boolean p2, p0, Ldw7;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldw7;->b:Ljava/lang/String;

    iget-boolean p0, p0, Ldw7;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/palmsdk/b;->a(Ljava/lang/String;Z)V

    return-void
.end method
