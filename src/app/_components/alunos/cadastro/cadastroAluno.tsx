"use client"
import { useForm, SubmitHandler } from "react-hook-form"
type Inputs = {
    nome: string
    telefone: string
    cpf: string
}

export default function CadastroAlunos() {
    const {
        register,
        handleSubmit,
        watch,
        formState: { errors },
    } = useForm<Inputs>()
    const onSubmit: SubmitHandler<Inputs> = (data) => console.log(data)


    return (
        /* "handleSubmit" will validate your inputs before invoking "onSubmit" */
        <form onSubmit={handleSubmit(onSubmit)}>
            {/* register your input into the hook by invoking the "register" function */}
            <input {...register("nome", { required: true })} />
            <input {...register("telefone", { required: true })} />
            <input {...register("cpf", { required: true })} />


            <input type="submit" />
        </form>
    )
}





