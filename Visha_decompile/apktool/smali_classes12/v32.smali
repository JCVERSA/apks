.class public final synthetic Lv32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Luv4;


# direct methods
.method public synthetic constructor <init>(Luv4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv32;->b:Luv4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lv32;->b:Luv4;

    invoke-interface {p0}, Luv4;->onInitSuccess()V

    return-void
.end method
