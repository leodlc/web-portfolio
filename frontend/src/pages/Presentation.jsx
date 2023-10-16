import Foto from '../assets/leo-portafolio.jpeg'
import '../styles/Presentation.css'

function Presentation(){

    return (
        <>
            <section className="pick-section">
                <div className="pick__pick-section">
                    <img src={Foto} alt="foto" />
                </div>
                <div className="description__pick-section">
                    
                        <div className='tittle-description__pick-section'>
                            <h1 className='gradient-text'>Mi persona</h1>
                        </div>
                        <div className='info-description__pick-section'>
                            <p>
                                Soy programador con experiencia en el diseño y desarrollo de aplicaciones web y bases de datos.
                                Siempre estoy dispuesto a aprender cosas nuevas sobre el mundo del Software, me encuentro actualizandome
                                con las nuevas tecnologias que salen al mercado, si te intereza que trabaje para ti puedes contactarme.
                            </p>
                        </div>
                    

                </div>

            </section>
        
        </>
    )
}

export default Presentation