.class public final synthetic Lvo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvo1;->b:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lvo1;->b:Lcom/transsion/widgets/CustomTabLayoutNew$TabView;

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setTextMaxWidth()V

    return-void
.end method
