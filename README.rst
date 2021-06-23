
Abstract, Codes and LaTeX-KnitR files for the research poster presented in the EcoSta2021 - 4th International Conference On Econometrics and Statistics, Hosted (Virtually) by the Hong Kong University of Science and Technology, `HKUST`_

.. _HKUST: http://www.cmstatistics.org/EcoSta2021

--------
ABSTRACT
--------

The temporal structure in financial time series (FTS) data demands non-trivial considerations in the use of cross-validation (CV). Such frequently used technique is based on statistical learning theory, which in turn is founded on the assumption that training samples are i.i.d. Although there is progress in the study of fundamental phenomenons in certain learning methods such as feature selection imbalance during the learning stage, currently it is widely accepted that there will be no reason to expect good out of sample results from a learning process without such strong assumption.

In FTS, there are conditions under which sub-sampling data leads to overshadow the effect of non-deterministic relationships between features and the target variable among different samples, such effect remains unnoticed given the use of the additivity property in the decomposition of objective functions for the Learning Process, moreover, it reduces to a particular operation the relationship among samples without information attribution. We present a technique that controls for information leakage and decomposes the global probability distribution into local probability distributions, providing identification of each sample contribution to the learning process, maintaining information sparsity, therefore, relaxing the effects of the i.i.d. assumption. Parametric stability, as a result, is presented for exchange rate prediction using different predictive models.

-------------
Documentation
-------------

- Github repository: https://github.com/iffranciscome/EcoSta2021

---------------
Reproducibility
---------------

- Cloning repository
  
Clone entire github project

    git@github.com:IFFranciscoME/T-Fold-SV.git

(optional) create a virtual environment

    virtualenv venv

(optional) activate virtual environment

        source ~/venv/bin/activate

and then install dependencies

        pip install -r requirements.txt

------
Author
------

- **Juan Francisco Muñoz-Elguezabal**. `IFFranciscoME`_

Associate Professor in the Mathematics and Physics Department, at `ITESO`_ University.

- **Juan Diego Sanchez-Torres**.

Full Professor and Faculty in the Mathematics and Physics Department, at `ITESO`_ University.

.. _ITESO: https://iteso.mx/
.. _IFFranciscoME: https://iffranciscome.com/

-------
License
-------

**MIT** 

*THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*

*Contact: For more information in reggards of this project, please contact francisco.me@iteso.mx*
