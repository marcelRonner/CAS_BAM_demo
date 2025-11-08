Notes and how-to

Files created in this folder (prefix indicates step):
- 1_domain_model.puml                : PlantUML domain model source
- 2_usecase_diagram.puml             : PlantUML use case diagram source
- 3_user_stories.txt                 : User stories grouped per use case with one Gherkin acceptance each
- 4_personas.txt                     : Persona descriptions for each actor
- 5_activity_*.puml                  : Activity diagrams for each use case (one file per use case)
- 6_state_*.puml                     : Statechart diagrams for domain model entries
- 7_nonfunctional_requirements.txt   : 10 NFRs grouped by ISO 25010 categories
- render_plantuml.sh                 : Script to render all .puml files to .png

To render diagrams locally (macOS zsh):

eval "$(ssh-agent -s)"
# Run from repository root or directly in the folder:
cd "$(pwd)"/"ZHAW Test Run"
./render_plantuml.sh

If plantuml is not installed, install via Homebrew:
brew install plantuml

Or download plantuml jar and run:
java -jar /path/to/plantuml.jar -tpng *.puml

